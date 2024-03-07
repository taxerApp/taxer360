/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import Dto.ExcelDto;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author David
 */
public class CargarExcelColaboradores {

   private  List<ExcelDto> lstEvaluador = new ArrayList<ExcelDto>();
   private List<ExcelDto> lstPonderacion = new ArrayList<ExcelDto>();
   private List<ExcelDto> lstColaborador = new ArrayList<ExcelDto>();
   private ExcelDto[] arrColaborador = null;
   private ExcelDto[] arrEvaluador = null;
   private ExcelDto[] arrPonderacion = null;

   
    public void CargarExcelColaboradores(String ruta) {

        try {
            FileInputStream file = new FileInputStream(ruta);

            //
            XSSFWorkbook wb = new XSSFWorkbook(file);

            
            XSSFSheet ws = wb.getSheetAt(0);
            int nColumnas = ws.getRow(0).getPhysicalNumberOfCells();
            System.out.println("Numero de columnas del excel " + nColumnas);

            Iterator<Row> rowIterator = ws.iterator();

            while (rowIterator.hasNext()) {
                Row row = rowIterator.next();
               
                Iterator<Cell> cellIterator = row.cellIterator();

                while (cellIterator.hasNext()) {
                    Cell cell = cellIterator.next();
  
//                    System.out.println(cell.getStringCellValue());
//                    System.out.println("cell.getRowIndex() "+cell.getRowIndex()); 
                    switch (cell.getCellType()) {
                        case Cell.CELL_TYPE_NUMERIC:
                   organizarInformacion(cell.getColumnIndex(), String.valueOf(cell.getNumericCellValue()));

//                            System.out.print(cell.getNumericCellValue() + " Columna " + cell.getColumnIndex() + " |");
                            break;
                        case Cell.CELL_TYPE_STRING:
                            if (cell.getRowIndex() == 0) {
                                if (cell.getStringCellValue().contains("Periodo")
                                        || cell.getStringCellValue().contains("Evaluador")
                                        || cell.getStringCellValue().contains("Persona")) { /*para evaluador*/
                                    ExcelDto objEvaluador = new ExcelDto();
                                    objEvaluador.setIndiceColumna(cell.getColumnIndex());

                                    objEvaluador.setEncabezado(cell.getStringCellValue().replaceAll("(\n|\r)", ""));
                                    objEvaluador.getLstValores().add(cell.getStringCellValue().replaceAll("(\n|\r)", ""));
                                    lstEvaluador.add(objEvaluador);
                                }
                                if (cell.getStringCellValue().contains("Periodo")
                                        || cell.getStringCellValue().contains("Peso (*)")
                                        || cell.getStringCellValue().contains("Autoevaluación")
                                        || (cell.getStringCellValue().contains("Persona")
                                        && (!cell.getStringCellValue().contains("Evaluador")))) { /*para ponderacion*/
                                    ExcelDto objPonderacion = new ExcelDto();
                                    objPonderacion.setIndiceColumna(cell.getColumnIndex());

                                    objPonderacion.setEncabezado(cell.getStringCellValue().replaceAll("(\n|\r)", ""));
                                    objPonderacion.getLstValores().add(cell.getStringCellValue().replaceAll("(\n|\r)", ""));
                                    lstPonderacion.add(objPonderacion);
//                                    System.out.print("Ponderacion columna :: " + cell.getStringCellValue().replaceAll("(\n|\r)", "") + " Columna " + cell.getColumnIndex() + " |");

                                }

                                if (cell.getStringCellValue().contains("Periodo")
                                        || cell.getStringCellValue().contains("Perfil")
                                        || (cell.getStringCellValue().contains("Persona")
                                        && (!cell.getStringCellValue().contains("Evaluador")))) { /*para colavorador*/
                                    ExcelDto objColaborador = new ExcelDto();

                                    objColaborador.setIndiceColumna(cell.getColumnIndex());

                                    objColaborador.setEncabezado(cell.getStringCellValue().replaceAll("(\n|\r)", ""));
                                    objColaborador.getLstValores().add(cell.getStringCellValue().replaceAll("(\n|\r)", ""));
                                    lstColaborador.add(objColaborador);
                                }
                            } else {
                                organizarInformacion(cell.getColumnIndex(), cell.getStringCellValue());

                            }
//                            System.out.print(cell.getStringCellValue().replaceAll("(\n|\r)", "") +" Columna "+cell.getColumnIndex()+" |");

                            break;
                        case Cell.CELL_TYPE_BLANK:

//                            System.out.print("S/D" + " Columna " + cell.getColumnIndex() + " |");
                            organizarInformacion(cell.getColumnIndex(), "S/D");
                            break;
                        case Cell.CELL_TYPE_BOOLEAN:

//                            System.out.print(cell.getBooleanCellValue() + " Columna " + cell.getColumnIndex() + " |");
                            organizarInformacion(cell.getColumnIndex(), String.valueOf(cell.getBooleanCellValue()));
                            break;
                        case Cell.CELL_TYPE_FORMULA:

//                            System.out.print(cell.getCellFormula() + " Columna " + cell.getColumnIndex() + " |");
                            organizarInformacion(cell.getColumnIndex(), String.valueOf(cell.getCellFormula()));

                            break;
                        case Cell.CELL_TYPE_ERROR:

//                            System.out.print(cell.getErrorCellValue() + " Columna " + cell.getColumnIndex() + " |");
                            organizarInformacion(cell.getColumnIndex(), String.valueOf(cell.getErrorCellValue()));

                            break;
                    }


                }

            }
          
            file.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void organizarInformacion(int columnIndex, String string) {

        for (int ic = 0; ic < lstColaborador.size(); ic++) {
            /*recorro las columnas (en este caso hay un objeto por columna)*/
            if (lstColaborador.get(ic).getIndiceColumna() == columnIndex) {
                /*vefrifico si el inidce recibido se encuentra en la lista de indices perteneciente a esta tabla*/
                lstColaborador.get(ic).getLstValores().add(string);
                /*Agrego el valor en la columna que le corresponde*/
            }
        }

        for (int ie = 0; ie < lstEvaluador.size(); ie++) {
            /*recorro las columnas (en este caso hay un objeto por columna)*/
            if (lstEvaluador.get(ie).getIndiceColumna() == columnIndex) {
                /*vefrifico si el inidce recibido se encuentra en la lista de indices perteneciente a esta tabla*/
                lstEvaluador.get(ie).getLstValores().add(string);/*Agrego el valor en la columna que le corresponde*/
            }
        }

        for (int ip = 0; ip < lstPonderacion.size(); ip++) {
            /*recorro las columnas (en este caso hay un objeto por columna)*/
            if (lstPonderacion.get(ip).getIndiceColumna() == columnIndex) {
                /*vefrifico si el inidce recibido se encuentra en la lista de indices perteneciente a esta tabla*/
                lstPonderacion.get(ip).getLstValores().add(string);/*Agrego el valor en la columna que le corresponde*/
            }
        }

//
        /*creo arreglos para facilitar el pintado en las tablas*/
        arrColaborador = new ExcelDto[lstColaborador.size()];
        arrEvaluador = new ExcelDto[lstEvaluador.size()];
        arrPonderacion = new ExcelDto[lstPonderacion.size()];

        /*lleno los arreglos*/
        for (int c = 0; c < lstColaborador.size(); c++) {
            arrColaborador[c] = lstColaborador.get(c);

        }

        for (int e = 0; e < lstEvaluador.size(); e++) {
            arrEvaluador[e] = lstEvaluador.get(e);

        }

        for (int p = 0; p < lstPonderacion.size(); p++) {
            arrPonderacion[p] = lstPonderacion.get(p);

        }

    }

     public ExcelDto[] getArrColaborador() {
        return arrColaborador;
    }

    public void setArrColaborador(ExcelDto[] arrColaborador) {
        this.arrColaborador = arrColaborador;
    }

    public ExcelDto[] getArrEvaluador() {
        return arrEvaluador;
    }

    public void setArrEvaluador(ExcelDto[] arrEvaluador) {
        this.arrEvaluador = arrEvaluador;
    }

    public ExcelDto[] getArrPonderacion() {
        return arrPonderacion;
    }

    public void setArrPonderacion(ExcelDto[] arrPonderacion) {
        this.arrPonderacion = arrPonderacion;
    }

    public List<ExcelDto> getLstEvaluador() {
        return lstEvaluador;
    }

    public void setLstEvaluador(List<ExcelDto> lstEvaluador) {
        this.lstEvaluador = lstEvaluador;
    }

    public List<ExcelDto> getLstPonderacion() {
        return lstPonderacion;
    }

    public void setLstPonderacion(List<ExcelDto> lstPonderacion) {
        this.lstPonderacion = lstPonderacion;
    }

    public List<ExcelDto> getLstColaborador() {
        return lstColaborador;
    }

    public void setLstColaborador(List<ExcelDto> lstColaborador) {
        this.lstColaborador = lstColaborador;
    }

}
